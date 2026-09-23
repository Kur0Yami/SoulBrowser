.class Lcom/mycompany/app/expand/ExpandListAdapter$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Landroid/widget/ExpandableListView;

.field public final synthetic c:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

.field public final synthetic d:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

.field public final synthetic e:Lcom/mycompany/app/expand/ExpandListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/expand/ExpandListAdapter;ILandroid/widget/ExpandableListView;Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->e:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->a:I

    .line 7
    .line 8
    iput-object p3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->b:Landroid/widget/ExpandableListView;

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->c:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 11
    .line 12
    iput-object p5, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->d:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->e:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p1, Lcom/mycompany/app/expand/ExpandListAdapter;->c:Z

    .line 5
    .line 6
    iget v1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->a:I

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 9
    .line 10
    .line 11
    move-result-object v2

    .line 12
    iput-boolean v0, v2, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->b:Landroid/widget/ExpandableListView;

    .line 15
    .line 16
    invoke-virtual {v2, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->c:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 20
    .line 21
    iget v2, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->f:I

    .line 22
    .line 23
    if-nez v2, :cond_0

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 26
    .line 27
    .line 28
    :cond_0
    iput v0, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->f:I

    .line 29
    .line 30
    const/4 p1, -0x1

    .line 31
    iput p1, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 32
    .line 33
    iget-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$2;->d:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 34
    .line 35
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 40
    .line 41
    .line 42
    return-void
.end method

.method public final onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method

.method public final onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    return-void
.end method
