.class Lcom/mycompany/app/main/MainListView$28;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$28;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$28;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_6

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->c0:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-nez v1, :cond_6

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView;->d0:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_1

    .line 16
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->j()Ljava/util/List;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    if-eqz v0, :cond_6

    .line 21
    .line 22
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    if-eqz v1, :cond_1

    .line 27
    .line 28
    goto :goto_1

    .line 29
    :cond_1
    const/4 v1, 0x0

    .line 30
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    check-cast v0, Lcom/mycompany/app/main/MainItem$ChildItem;

    .line 35
    .line 36
    if-nez v0, :cond_2

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :cond_2
    iget v1, p1, Lcom/mycompany/app/main/MainListView;->d:I

    .line 40
    .line 41
    const/16 v2, 0x23

    .line 42
    .line 43
    if-ne v1, v2, :cond_3

    .line 44
    .line 45
    const/4 v1, 0x0

    .line 46
    invoke-virtual {p1, v0, v1}, Lcom/mycompany/app/main/MainListView;->s0(Lcom/mycompany/app/main/MainItem$ChildItem;Lcom/mycompany/app/dialog/DialogSetFull$DialogApplyListener;)V

    .line 47
    .line 48
    .line 49
    return-void

    .line 50
    :cond_3
    const/16 v2, 0x18

    .line 51
    .line 52
    if-eq v1, v2, :cond_5

    .line 53
    .line 54
    const/16 v2, 0x24

    .line 55
    .line 56
    if-ne v1, v2, :cond_4

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :cond_4
    invoke-virtual {p1, v0}, Lcom/mycompany/app/main/MainListView;->t0(Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 60
    .line 61
    .line 62
    return-void

    .line 63
    :cond_5
    :goto_0
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainListView;->g(Lcom/mycompany/app/main/MainListView;Lcom/mycompany/app/main/MainItem$ChildItem;)V

    .line 64
    .line 65
    .line 66
    :cond_6
    :goto_1
    return-void
.end method
