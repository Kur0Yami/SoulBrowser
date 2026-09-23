.class Lcom/mycompany/app/main/MainListAdapter$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/main/MainListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListAdapter;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListAdapter$4;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListAdapter$4;->c:Lcom/mycompany/app/main/MainListAdapter;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListAdapter;->y:Lcom/mycompany/app/main/MainListAdapter$ListRectListener;

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Ljava/lang/Integer;

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result p1

    .line 17
    check-cast v0, Lcom/mycompany/app/main/MainListView$72;

    .line 18
    .line 19
    invoke-virtual {v0, p1}, Lcom/mycompany/app/main/MainListView$72;->a(I)V

    .line 20
    .line 21
    .line 22
    :cond_0
    return-void
.end method
