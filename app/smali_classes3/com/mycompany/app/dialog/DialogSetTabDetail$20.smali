.class Lcom/mycompany/app/dialog/DialogSetTabDetail$20;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/dialog/DialogSetTabDetail;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetTabDetail;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->g:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->c:I

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->f:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->g:Lcom/mycompany/app/dialog/DialogSetTabDetail;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetTabDetail;->m0:Lcom/mycompany/app/view/MyRecyclerView;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->c:I

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    iget v3, p0, Lcom/mycompany/app/dialog/DialogSetTabDetail$20;->f:I

    .line 12
    .line 13
    if-ne v1, v2, :cond_1

    .line 14
    .line 15
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->l0(I)V

    .line 16
    .line 17
    .line 18
    return-void

    .line 19
    :cond_1
    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->i0(I)V

    .line 20
    .line 21
    .line 22
    return-void
.end method
