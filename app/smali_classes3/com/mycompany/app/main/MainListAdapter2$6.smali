.class Lcom/mycompany/app/main/MainListAdapter2$6;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter2;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter2$6;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter2$6;->c:Lcom/mycompany/app/main/MainListAdapter2;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter2;->r:Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    invoke-interface {v0, p1, v1}, Lcom/mycompany/app/main/MainListAdapter$ListMoreListener;->a(Landroid/view/View;I)V

    .line 18
    .line 19
    .line 20
    :cond_0
    return-void
.end method
