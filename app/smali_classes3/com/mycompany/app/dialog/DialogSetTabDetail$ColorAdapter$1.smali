.class Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter$1;->c:Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail$ColorAdapter;->d:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 4
    .line 5
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 6
    .line 7
    if-nez v2, :cond_0

    .line 8
    .line 9
    goto :goto_3

    .line 10
    :cond_0
    const/4 v2, 0x0

    .line 11
    if-nez p1, :cond_1

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    move-result-object v3

    .line 18
    if-nez v3, :cond_2

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_2
    instance-of v4, v3, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;

    .line 22
    .line 23
    if-nez v4, :cond_3

    .line 24
    .line 25
    goto :goto_0

    .line 26
    :cond_3
    move-object v2, v3

    .line 27
    check-cast v2, Lcom/mycompany/app/dialog/DialogSetTabDetail$ViewPagerHolder;

    .line 28
    .line 29
    :goto_0
    if-eqz v2, :cond_5

    .line 30
    .line 31
    iget-object v3, v2, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->a:Landroid/view/View;

    .line 32
    .line 33
    if-nez v3, :cond_4

    .line 34
    .line 35
    goto :goto_1

    .line 36
    :cond_4
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->c()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    goto :goto_2

    .line 41
    :cond_5
    :goto_1
    const/4 v2, -0x1

    .line 42
    :goto_2
    iget v3, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 43
    .line 44
    if-ne v3, v2, :cond_6

    .line 45
    .line 46
    goto :goto_3

    .line 47
    :cond_6
    iput v2, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 48
    .line 49
    instance-of v2, p1, Lcom/mycompany/app/view/MyButtonCheck;

    .line 50
    .line 51
    if-nez v2, :cond_7

    .line 52
    .line 53
    :goto_3
    return-void

    .line 54
    :cond_7
    check-cast p1, Lcom/mycompany/app/view/MyButtonCheck;

    .line 55
    .line 56
    const/4 v2, 0x1

    .line 57
    invoke-virtual {p1, v2, v2}, Lcom/mycompany/app/view/MyButtonCheck;->q(ZZ)V

    .line 58
    .line 59
    .line 60
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->h(I)V

    .line 61
    .line 62
    .line 63
    iget-object p1, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->o0:Lcom/mycompany/app/web/WebTabBarAdapter;

    .line 64
    .line 65
    iget-boolean v0, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->P0:Z

    .line 66
    .line 67
    iget v1, v1, Lcom/mycompany/app/dialog/DialogSetTabDetail;->Q0:I

    .line 68
    .line 69
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/web/WebTabBarAdapter;->N(IZ)V

    .line 70
    .line 71
    .line 72
    return-void
.end method
