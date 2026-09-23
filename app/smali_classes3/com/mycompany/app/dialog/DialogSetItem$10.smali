.class Lcom/mycompany/app/dialog/DialogSetItem$10;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:I

.field public final synthetic f:Lcom/mycompany/app/dialog/DialogSetItem;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogSetItem;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogSetItem$10;->f:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 5
    .line 6
    iput p2, p0, Lcom/mycompany/app/dialog/DialogSetItem$10;->c:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogSetItem$10;->f:Lcom/mycompany/app/dialog/DialogSetItem;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogSetItem;->o0:Lcom/mycompany/app/main/MainSelectAdapter;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogSetItem;->p0:Lcom/mycompany/app/view/MyManagerLinear;

    .line 9
    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    iget v1, p0, Lcom/mycompany/app/dialog/DialogSetItem$10;->c:I

    .line 13
    .line 14
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->x0(I)V

    .line 15
    .line 16
    .line 17
    :cond_1
    :goto_0
    return-void
.end method
