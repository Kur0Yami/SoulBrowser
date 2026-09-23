.class Lcom/mycompany/app/main/MainListView$17;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupExpandListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/main/MainListView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/main/MainListView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$17;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupExpand(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/main/MainListView$17;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 8
    .line 9
    if-eqz v1, :cond_0

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    iput-boolean v1, v0, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 13
    .line 14
    iput p1, v0, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 15
    .line 16
    return-void

    .line 17
    :cond_0
    const/4 p1, -0x1

    .line 18
    iput p1, v0, Lcom/mycompany/app/main/MainListAdapter;->u:I

    .line 19
    .line 20
    :cond_1
    return-void
.end method
