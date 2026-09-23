.class Lcom/mycompany/app/main/MainListView$16;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/ExpandableListView$OnGroupClickListener;


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
    iput-object p1, p0, Lcom/mycompany/app/main/MainListView$16;->a:Lcom/mycompany/app/main/MainListView;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGroupClick(Landroid/widget/ExpandableListView;Landroid/view/View;IJ)Z
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/main/MainListView$16;->a:Lcom/mycompany/app/main/MainListView;

    .line 2
    .line 3
    iget-object p2, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 4
    .line 5
    const/4 p4, 0x0

    .line 6
    if-eqz p2, :cond_2

    .line 7
    .line 8
    iget-object p5, p1, Lcom/mycompany/app/main/MainListView;->h0:Lcom/mycompany/app/main/MainListAdapter;

    .line 9
    .line 10
    if-nez p5, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    iput-boolean v0, p5, Lcom/mycompany/app/main/MainListAdapter;->t:Z

    .line 15
    .line 16
    invoke-virtual {p2, p3}, Landroid/widget/ExpandableListView;->isGroupExpanded(I)Z

    .line 17
    .line 18
    .line 19
    move-result p2

    .line 20
    if-eqz p2, :cond_1

    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 23
    .line 24
    invoke-virtual {p1, p3, p4}, Lcom/mycompany/app/expand/ExpandListView;->a(II)V

    .line 25
    .line 26
    .line 27
    return v0

    .line 28
    :cond_1
    iget-object p1, p1, Lcom/mycompany/app/main/MainListView;->M:Lcom/mycompany/app/fragment/FragmentExpandView;

    .line 29
    .line 30
    invoke-virtual {p1, p3}, Lcom/mycompany/app/expand/ExpandListView;->b(I)V

    .line 31
    .line 32
    .line 33
    return v0

    .line 34
    :cond_2
    :goto_0
    return p4
.end method
