.class Lcom/mycompany/app/main/MainSelectAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainSelectAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainSelectAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainSelectAdapter$1;->c:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainSelectAdapter$1;->c:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_4

    .line 8
    :cond_0
    if-nez p1, :cond_1

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object v1

    .line 15
    if-nez v1, :cond_2

    .line 16
    .line 17
    goto :goto_0

    .line 18
    :cond_2
    instance-of v2, v1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 19
    .line 20
    if-nez v2, :cond_3

    .line 21
    .line 22
    :goto_0
    const/4 v1, 0x0

    .line 23
    goto :goto_1

    .line 24
    :cond_3
    check-cast v1, Lcom/mycompany/app/main/MainSelectAdapter$ViewHolder;

    .line 25
    .line 26
    :goto_1
    if-eqz v1, :cond_5

    .line 27
    .line 28
    iget-object v2, v1, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 29
    .line 30
    if-nez v2, :cond_4

    .line 31
    .line 32
    goto :goto_2

    .line 33
    :cond_4
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 34
    .line 35
    .line 36
    move-result v1

    .line 37
    goto :goto_3

    .line 38
    :cond_5
    :goto_2
    const/4 v1, -0x1

    .line 39
    :goto_3
    invoke-virtual {v0, v1}, Lcom/mycompany/app/main/MainSelectAdapter;->v(I)Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;

    .line 40
    .line 41
    .line 42
    move-result-object v1

    .line 43
    if-nez v1, :cond_6

    .line 44
    .line 45
    :goto_4
    return-void

    .line 46
    :cond_6
    iget-boolean v2, v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->k:Z

    .line 47
    .line 48
    if-eqz v2, :cond_7

    .line 49
    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 51
    .line 52
    .line 53
    move-result-object p1

    .line 54
    sget v0, Lnet/kaki87/soul2/testing/R$string;->already_added:I

    .line 55
    .line 56
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 57
    .line 58
    .line 59
    return-void

    .line 60
    :cond_7
    iget-object p1, v0, Lcom/mycompany/app/main/MainSelectAdapter;->i:Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;

    .line 61
    .line 62
    iget v0, v1, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectItem;->a:I

    .line 63
    .line 64
    invoke-interface {p1, v0}, Lcom/mycompany/app/main/MainSelectAdapter$MainSelectListener;->a(I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method
