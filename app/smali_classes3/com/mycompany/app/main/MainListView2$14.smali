.class Lcom/mycompany/app/main/MainListView2$14;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListView2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView2$14;->c:Lcom/mycompany/app/main/MainListView2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView2$14;->c:Lcom/mycompany/app/main/MainListView2;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView2;->T:Lcom/mycompany/app/main/MainListAdapter2;

    .line 4
    .line 5
    if-eqz v0, :cond_2

    .line 6
    .line 7
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->P:Landroid/animation/ValueAnimator;

    .line 8
    .line 9
    if-nez v1, :cond_2

    .line 10
    .line 11
    iget-object v1, p1, Lcom/mycompany/app/main/MainListView2;->Q:Landroid/animation/ValueAnimator;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    goto :goto_0

    .line 16
    :cond_0
    iget v1, p1, Lcom/mycompany/app/main/MainListView2;->e:I

    .line 17
    .line 18
    const/16 v2, 0x25

    .line 19
    .line 20
    if-ne v1, v2, :cond_1

    .line 21
    .line 22
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->y()Ljava/util/List;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainListView2;->b(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;)V

    .line 27
    .line 28
    .line 29
    return-void

    .line 30
    :cond_1
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter2;->y()Ljava/util/List;

    .line 31
    .line 32
    .line 33
    move-result-object v0

    .line 34
    const/4 v1, 0x2

    .line 35
    const/4 v2, 0x0

    .line 36
    invoke-static {p1, v0, v2, v1}, Lcom/mycompany/app/main/MainListView2;->d(Lcom/mycompany/app/main/MainListView2;Ljava/util/List;Ljava/lang/String;I)V

    .line 37
    .line 38
    .line 39
    :cond_2
    :goto_0
    return-void
.end method
