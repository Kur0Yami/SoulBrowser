.class Lcom/mycompany/app/expand/ExpandListAdapter$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/expand/ExpandListAdapter$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/expand/ExpandListAdapter$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1$1;->a:Lcom/mycompany/app/expand/ExpandListAdapter$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1$1;->a:Lcom/mycompany/app/expand/ExpandListAdapter$1;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/mycompany/app/expand/ExpandListAdapter$1;->i:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 4
    .line 5
    iget v1, p1, Lcom/mycompany/app/expand/ExpandListAdapter$1;->h:I

    .line 6
    .line 7
    invoke-virtual {v0, v1}, Lcom/mycompany/app/expand/ExpandListAdapter;->b(I)Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    const/4 v2, 0x0

    .line 12
    iput-boolean v2, v1, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->a:Z

    .line 13
    .line 14
    invoke-virtual {v0}, Landroid/widget/BaseExpandableListAdapter;->notifyDataSetChanged()V

    .line 15
    .line 16
    .line 17
    iget-object v0, p1, Lcom/mycompany/app/expand/ExpandListAdapter$1;->g:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 18
    .line 19
    const/4 v1, -0x1

    .line 20
    iput v1, v0, Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;->e:I

    .line 21
    .line 22
    iget-object p1, p1, Lcom/mycompany/app/expand/ExpandListAdapter$1;->c:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 23
    .line 24
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {p1, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 29
    .line 30
    .line 31
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
