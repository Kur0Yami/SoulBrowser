.class Lcom/mycompany/app/main/MainListView$41;
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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$41;->c:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$41;->c:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 4
    .line 5
    if-eqz v0, :cond_3

    .line 6
    .line 7
    iget-object v0, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 8
    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    goto :goto_1

    .line 12
    :cond_0
    invoke-virtual {v0}, Lcom/mycompany/app/main/MainListAdapter;->j()Ljava/util/List;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_2

    .line 17
    .line 18
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    if-eqz v1, :cond_1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->o:Lcom/mycompany/app/main/MainListListener;

    .line 26
    .line 27
    const/4 v1, 0x0

    .line 28
    invoke-virtual {p1, v1, v0}, Lcom/mycompany/app/main/MainListListener;->b(ILjava/util/List;)V

    .line 29
    .line 30
    .line 31
    return-void

    .line 32
    :cond_2
    :goto_0
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->a:Lcom/mycompany/app/main/MainActivity;

    .line 33
    .line 34
    sget v0, Lnet/kaki87/soul2/testing/R$string;->local_cast_guide_2:I

    .line 35
    .line 36
    invoke-static {p1, v0}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 37
    .line 38
    .line 39
    :cond_3
    :goto_1
    return-void
.end method
